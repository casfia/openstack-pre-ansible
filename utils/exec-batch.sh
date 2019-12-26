#!/bin/bash
more $2 | xargs -I {} $1 {}
