import React from "react";
import { createBrowserRouter, RouterProvider } from "react-router-dom";

import NabvarLayout from "../Layout/NabvarLayout";
import Metier from "./Metier";
import Laureat from "./laureat/Laureat";
import LaureatProfil from "./laureat/LaureatProfil";
import LaureatExperience from "./laureat/LaureatExperience";
import LaureatDiplome from "./laureat/LaureatDiplome";
import LaureatLangues from "./laureat/LaureatLangues";
import LaureatCandidature from "./laureat/LaureatCandidature";
import Entreprise from "./Entreprise";
import InscriptionEntreprise from "./InscriptionEntreprise";
import EntrepriseIdentif from "./EntrepriseIdentif";
import EntrepriseCompetence from "./EntrepriseCompetence";
import EntrepriseLaureat from "./EntrepriseLaureat";
import EntrepriseOffre from "./EntrepriseOffre";
import EntrepriseContact from "./EntrepriseContact";
import InscriptionLaureat from "./InscriptionLaureat";
import ProfileInfo from "./laureat/ProfileInfo";
import LastOffers from "./laureat/LastOffers";
import OffreDetails from "./laureat/OffreDetails";
import LaureatPièces from "./laureat/LaureatPièces";
import LaureatCompetence from "./laureat/LaureatCompetence";
import Responsable from "./Responsable";
import StagiaireDetails from './StagiaireDetails'
import EntrepriseOffreLaureat from './EntrepriseOffreLaureat'

export default function Router() {
  const router = createBrowserRouter([
    {
      path: "/",
      element: <NabvarLayout />,
      // eslint-disable-next-line no-sparse-arrays
      children: [
        {
          path: "",
          element: <Metier />,
        },
        {
            path:':cin',
            element:<StagiaireDetails />
        },
        {
          path: "Laureat",
          element: <Laureat />,
          children: [
            {
              path: "",
              element: <LaureatProfil />,
              children: [
                {
                  path: "",
                  element: <ProfileInfo />,
                },
                {
                  path: "laureatExperience",
                  element: <LaureatExperience />,
                },
                {
                  path: "LaureatCompetence",
                  element: <LaureatCompetence />,
                },
                {
                  path: "laureatDiplome",
                  element: <LaureatDiplome />,
                },
                {
                  path: "laureatLangue",
                  element: <LaureatLangues />,
                },
                {
                  path: "LaureatPièces",
                  element: <LaureatPièces />,
                },

              ],
            },
            {
              path: "LaureatCandidature",
              element: <LaureatCandidature />,
            },

            {
              path: "LastOffers",
              element: <LastOffers />,
            },

            { path: ":id", element: <OffreDetails /> },

          ],
        },

        {
          path: "Entreprise",
          element: <Entreprise />,
          children: [
            {
              path: "",
              element: <EntrepriseIdentif />,
            },
            {
              path: "Responsable",
              element: <Responsable />,
            },
            {
              path: "entrepriseCompetence",
              element: <EntrepriseCompetence />,
            },
            {
              path: "entrepriseLaureat",
              element: <EntrepriseLaureat />,
            },
            {
                path: "EntrepriseOffreLaureat/:id",
                element: <EntrepriseOffreLaureat />,
              },
            {
              path: "entrepriseOffre",
              element: <EntrepriseOffre />,
            },

            {
              path: "entrepriseContact",
              element: <EntrepriseContact />,
            },
          ],
        },
        ,
        {
          path: "InscriptionLaureat",
          element: <InscriptionLaureat />,
        },

        {
          path: "InscriptionEntreprise",
          element: <InscriptionEntreprise />,
        },
      ],
    },
  ]);

  return <RouterProvider router={router} />;
}
