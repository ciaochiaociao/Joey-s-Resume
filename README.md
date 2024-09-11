# Resume Template
This is a resume template that I created for myself.
It is based on the standard LaTeX article class with modularized commands and folders for different sections of the resume.

The folder structure is as follows:
```
.
├── title.tex
├── main.tex
├── resume.sty  % resume style file
├── sections
│   ├── skills.tex
│   ├── honors.tex
│   ├── ...
│   ├── exp
│   │   ├── 1-....tex
│   │   ├── 2-....tex
│   ├── edu
│   │   ├── 1-....tex
│   │   ├── 2-....tex
│   ├── proj
│   │   ├── 1-....tex
│   │   ├── 2-....tex
│   ├── ...
├── ...
├── README.md
```

## Hierarchical List
For example, the following list is a hierarchical list of resume items:

```
- section
  - resumeSubHeadingIIListStart
    - resumeItemListStart
      - resumeItem
      - resumeItem
      - resumeItem
    - resumeItemListEnd
  - resumeSubHeadingIIListEnd
- section
  - resumeSubHeadingListStart
    - resumeItemListStart
      - resumeItem
      - resumeItem
    - resumeItemListEnd
  - resumeSubHeadingListEnd
- section
  - resumeSubHeadingIIIListStart
    - resumeItemListStart
      - resumeItem
    - resumeItemListEnd
  - resumeSubHeadingIIIListEnd
```
## Setting the Format

The `resume.sty` file provides various commands and environments to format your resume. Here's how to use some of the key formatting options:

### Sections
Use the `\section{}` command to create main sections of your resume:

```
\section{Education}
\section{Work Experience}
```


### Variations
- Use `\resumeSubheadingII` for a 5-argument version that includes an additional field (e.g., for awards or certifications).
- Use `\resumeSubheadingIII` for a simpler 2-argument version (e.g., for skills or projects).

### Lists
Different types of lists are available:

- `\resumeItemListStart` and `\resumeItemListEnd` for standard bullet points
- `\bulletedListStart` and `\bulletedListEnd` for explicitly bulleted lists
- `\simpleListStart` and `\simpleListEnd` for lists without bullets
- `\arabicListStart` and `\arabicListEnd` for numbered lists (1, 2, 3...)
- `\alphabetListStart` and `\alphabetListEnd` for lettered lists (a, b, c...)

### Customization
You can adjust margins, fonts, and other layout settings by modifying the `resume.sty` file directly. Look for the commented sections at the top of the file for font options and margin adjustments.

### Format-related layout settings
Adjust the format-related layout settings like size of the text, margins, etc., based on your needs like
> \leftmargin, \topsep (or \before, \after for more control), \itemsep, \parsep, \parskip, \parindent, etc.
