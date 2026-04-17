function Params = get_parametres_vehicule(nom_vehicule)
    switch nom_vehicule
        case "Voiture Legere"
            Params.m= 1310; %masse du véhicule (kg)
            Params.Iz=1760; %moment d'inertie en lacet(kg/m^2)
            Params.Lf=1.2; %demi empatement avant (m)
            Params.Lr=1.4; %demi empatement arrière (m)
            Params.Cr=69740;%rigidité de dérive avant (N/rad)
            Params.Cf=63460;%rigidité de dérive arrière (N/rad)
            Params.C=1.6 ; %espacement imaginaire entre les 2 pneus (m)
            Params.h=0.5; % (hauteur du centre de gravite (m)

        case "SUV"
            Params.m=1800;
            Params.Iz=3200;
            Params.Lf= 1.3;
            Params.Lr=1.5;
            Params.Cr= 75000;
            Params.Cf=70000;
            Params.C=1.8 ;
            Params.h=0.95;

        case "Aéroglisseur"
            Params.m=850;
            Params.Iz=1500;
            Params.Lf=2 ;
            Params.Lr=1.5;
            % Cf/Cr très faibles=savonnette
            Params.Cf=200 ;
            Params.Cr=2000;
            %pas nécessaire car conditions de retournement différentes
            Params.C=0;
            Params.h=0 ;
        otherwise
            error("Erreur véhicule.");
    end
end