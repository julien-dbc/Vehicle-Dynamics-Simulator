function mu=get_mu_sol(sol)
    switch sol
        % Coeff friction du sol
        case "Sec"
            mu= 0.95 ;
        case "Mouillé"
            mu=0.7;
        case "Neige"
            mu= 0.3;
        case "Verglas"
            mu =0.1;
        otherwise
            error("Erreur Sol");
    end
end
