#!/usr/bin/env bash


prefix=$(dirname $(realpath $0))


MMPBSA_package_dir=$prefix/MMPBSA_package
bin_dir=$prefix/bin

# # install MMPBSA_mods
mkdir -p $MMPBSA_package_dir
mkdir -p $bin_dir
cp $prefix/MMPBSA_src/MMPBSA_mods $MMPBSA_package_dir -r

# # install MMPBSA.py and MMPBSA.py.MPI
cp $prefix/MMPBSA_src/MMPBSA.py $bin_dir
cp $prefix/MMPBSA_src/MMPBSA.py.MPI $bin_dir

chmod 775 $bin_dir/MMPBSA.py
chmod 775 $bin_dir/MMPBSA.py.MPI

cat >$prefix/load_MMPBSA.sh <<EOF
#!/usr/bin/env bash
add_python_path=$MMPBSA_package_dir
add_path=$bin_dir
if ! grep "\$add_python_path" <<<\$PYTHONPATH >/dev/null; then
    export PYTHONPATH=\$PYTHONPATH:\$add_python_path
fi
if ! grep "\$add_path" <<<\$PATH >/dev/null; then
    export PATH=\$PATH:\$add_path
fi
EOF
