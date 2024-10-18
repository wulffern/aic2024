#!/usr/bin/env python3

import re
import sys
import os
fname = sys.argv[1]


def imgConvert(ftype,fotype,path):
    fopath = "media/"+ os.path.basename(path).replace(ftype,fotype)
    if(not os.path.exists(fopath)):
        os.system(f"convert -density 100 {path} {fopath}")
    return fopath


def toPng(ftype,path):
    return imgConvert(ftype,".png",path)

def toPdf(ftype,path):
    return imgConvert(ftype,".pdf",path)

def getPath(line):

    m = re.findall(r"{([^{}]+)}",line)
    path = m[0]

    return path

tmplt = r"""
{
\centering
\includegraphics[width=\myfigwidth]{#path#}

}
"""

#tmplt = r"""
#\pandocbounded{\includegraphics[width=\myfigwidth]{#path#}}
#"""

foname = fname.replace(".latex","_fiximg.tex")
foname_png = fname.replace(".latex","_fiximg_png.tex")
with open(fname) as fi:
    with open(foname,"w") as fo:
        with open(foname_png,"w") as fo_png:
            for line in fi:

                #- Fix titles for kao
                #if(re.search(r"^\s*\\chapter",line)):
                #    nline = """\setchapterstyle{kao}
#\setchapterpreamble[u]{\margintoc}
#""" + line
 #                   fo.write(nline)
 #                   fo_png.write(line)
 #                   continue

                #- Pandoc sometimes uses includesvg instead of includegraphics
                line = line.replace("includesvg","includegraphics")
                if(re.search(r"includegraphics(\[[^\]]+\])?{",line)):
                    path = getPath(line)
                    fopath = path
                    fopath_png = path
                    if(path.endswith(".svg")):
                        fopath = toPdf(".svg",path)
                        fopath_png = toPng(".svg",path)
                        pass
                    elif(path.endswith(".gif")):
                        fopath = toPng(".gif",path)
                        fopath_png = fopath
                        pass
                    elif(path.endswith(".pdf")):
                        fopath_png = toPng(".pdf",path)
                        pass
                    fo.write(tmplt.replace("#path#",fopath))
                    fo_png.write(tmplt.replace("#path#",fopath_png))
                else:
                    fo.write(line)
                    fo_png.write(line)
