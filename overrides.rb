# Write in this file customization code that will get executed after all the
# soures have beenloaded.

 metapackage('rock.simulation').weak_dependencies = true

if (Autoproj.user_config('pure_mars')) then
    Autoproj.manifest.each_package do |p|
        if p.kind_of?(Autobuild::Orogen)
        #if p.name.include?('orogen')
            Autoproj.manifest.add_exclusion p.name,"No-orogen-stuff"
        end
    end
end

