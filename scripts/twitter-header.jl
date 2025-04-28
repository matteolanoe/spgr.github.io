
"""
This function runs the entire pipeline for the paper. 
"""
            function replicate()
                r = read_raw_data()
                d = clean_data(r)
                f = fit_model(d) |> post_process()
                paper = compile_latex(f)
                return paper
            end





