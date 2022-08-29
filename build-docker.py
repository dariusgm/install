import re

def main():
    templates = ['ubuntu.template.Dockerfile']
    for template  in templates:
        generated_template = template.replace(".template", "")
        with(open(generated_template, 'wt')) as template_handler:
            with(open(template, 'rt')) as docker_reader:
                for line in docker_reader:
                    if 'bash' in line and 'echo' in line and not '#' in line:
                        m = re.search("bash ~/install/(.*)", line)
                        p = m.group(1)
                        with(open(p, 'rt')) as nested_template:
                            template_handler.write(f"# {p}\n")
                            for l in nested_template:
                                if (len(l.strip())) > 0:
                                    template_handler.write(f"RUN {l}")
                    else:
                        template_handler.write(line)
if __name__ == '__main__':
    main()
