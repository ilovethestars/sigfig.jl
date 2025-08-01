module SigFig
    # If the Measurements package is loaded, do not use sigfig
    if Base.loaded_modules_array() |> any(m -> nameof(m) == :Measurements)
        @warn "SigFig is disabled when Measurements package is loaded."
    end

    export number_with_sigfigs

    struct number_with_sigfigs{number_type<:Real}
        numeric_value::number_type
        number_of_sigfigs::Int
    end

    function round_numbers(numeric_value::number_type, number_of_sigfigs::Int) where number_type<:Real
        if numeric_value == 0
            return zero(number_type)
        end
    end
end