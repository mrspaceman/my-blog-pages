#!/bin/bash
#
articleName="$1"
echo -e '\E[35m'"\033[1m ** Creating new draft article $articleName ** \033[0m"

export todaysDate=$(date +"%Y-%m-%d")

articleTitle="$todaysDate-$articleName"
draftFilename="_drafts/$articleTitle.md"

touch "$draftFilename"
mkdir "assets/images/$articleTitle"
cp test.png "assets/images/$articleTitle"

cat >$draftFilename <<EOL
---
layout: post
title: Project CB750 part 3
date: $todaysDate
author: Andy Aspell-Clark
tags:
- cb750
- motorcycle
- programming
- computer
---

### $articleName

![image](../assets/images/$articleTitle/test.png)

EOL

set -x
git add _drafts assets _posts
git commit -m"add article $articleTitle"
# git push
set +x
