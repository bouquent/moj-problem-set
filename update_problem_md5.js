const fs = require('fs');
var path = require('path');

function Main()
{
    const args = process.argv.slice(2)
    var new_file_name = args[0];
    var new_file_md5_value = args[1];
    var md5_map = JSON.parse(fs.readFileSync(path.join(__dirname, 'md5_list.json')));
    let fNames = Object.keys(md5_map);
    for (let i in fNames)
    {
        let fName = fNames[i];
        if (fName == new_file_name) {
            md5_map[fName]['md5']=new_file_md5_value;
            fs.writeFile('md5_list.json', JSON.stringify(md5_map), (err) => {
                 if(err) {  
                    console.error(err);
                     return; 
                } else {
                    console.log('done');
                } 
            });
            return ;
        }
    }

    md5_map[new_file_name]={};
    md5_map[new_file_name]['md5']=new_file_md5_value;
    fs.writeFile('md5_list.json', JSON.stringify(md5_map), (err) => { 
        if(err) {  
            console.error(err); 
            return; 
        } else {
            console.log('done');
        }
    });
}

Main()
