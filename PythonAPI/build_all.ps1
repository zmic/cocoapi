$pythons = @(
    'c:\python35',
    'c:\python35-32',
    'c:\python36',
    'c:\python36-32',
    'c:\python37',
    'c:\python37-32',
    'c:\python38',
    'c:\python38-32'
)


if (0)
{
    foreach ($p in $pythons)
    {
        & "$p\scripts\pip.exe" install numpy
    }
}

del ./dist/*.*

foreach ($p in $pythons)
{
    #& "$p\python.exe" .\setup.py build_ext --inplace
    & "$p\python.exe" .\setup.py sdist bdist_wheel
}

del ./dist/*.gz
#p37 -m twine upload dist/*


