#' @title Country
#' @description
#' Senegal, level-0 entity.
#' * GID_0: unique identifier for countries
#' * NAME: name of the country
#' @source Codes and geometries have been extracted from the GADM database v4.1
#' (\url{https://gadm.org/}). Geometries precision has been fixed to 1 meter.
#' @md
#' @import sf
#' @returns An sf object is returned.
#' @export
#' @examples
#' senegal <- sn_country()
#' plot(senegal)
#' if (require("mapsf")) {
#'   mf_map(senegal)
#'   mf_title("Senegal")
#' }
#' @export
sn_country <- function() {
  readRDS(system.file("rds/pays.rds", package = "mapSenegal"))
}


#' @title Neighboring countries
#' @description
#' Neighboring countries of Senegal, level-0 entities.
#' * GID_0: unique identifier for countries
#' * NAME: name of the country
#' @source Codes and geometries have been extracted from the GADM database v4.1
#' (\url{https://gadm.org/}). Geometries precision has been fixed to 1 meter.
#' Countries were cropped using a 100 km buffer around the Senegal bounding box.
#' @md
#' @returns An sf object is returned.
#' @export
#' @examples
#' neighbors <- sn_neighbors()
#' plot(neighbors)
#' if (require("mapsf")) {
#'   mf_map(neighbors)
#'   mf_label(neighbors, "NAME", halo = TRUE)
#'   mf_title("Senegal and Neighboring Countries")
#' }
#' @export
#' @export
sn_neighbors <- function() {
  readRDS(system.file("rds/pays_limitrophes.rds", package = "mapSenegal"))
}


#' @title Regions
#' @description
#' Regions of Senegal, level-1 entities.
#' * GID_1: unique identifier for regions
#' * NAME: name of the region
#' * CC_1: unknown identifier
#' * HASC_1: hierarchical administrative subdivision codes for level-1 entities
#' * ISO: ISO codes for level-1 entities (ISO-3166-2)
#' * POP_RGPH4: 20xx population
#' * POP_RGPH5: 2023 population
#' @source Codes and geometries have been extracted from the GADM database v4.1
#' (\url{https://gadm.org/}). Geometries precision has been fixed to 1 meter.
#' @md
#' @returns An sf object is returned.
#' @export
#' @examples
#' reg <- sn_regions()
#' plot(reg)
#' if (require("mapsf")) {
#'   mf_map(reg)
#'   mf_title("Regions of Senegal")
#' }
sn_regions <- function() {
  readRDS(system.file("rds/regions.rds", package = "mapSenegal"))
}

#' @title Departments
#' @description
#' Departments of Senegal, level-2 entities.
#' * GID_1: identifier for regions
#' * GID_2: unique identifier for departments
#' * NAME: name of the department
#' * CC_2: unknown code
#' * HASC_2: hierarchical administrative subdivision codes for level-2 entities
#' * POP_RGPH5: 2023 population
#' * POP_2024: 2024 population
#' @source Codes and geometries have been extracted from the GADM database v4.1
#' (\url{https://gadm.org/}). Geometries precision has been fixed to 1 meter.
#' @md
#' @returns An sf object is returned.
#' @export
#' @examples
#' dep <- sn_departments()
#' plot(dep)
#' if (require("mapsf")) {
#'   mf_map(dep)
#'   mf_title("Departments of Senegal")
#' }
sn_departments <- function() {
  readRDS(system.file("rds/departements.rds", package = "mapSenegal"))
}

#' @title Arrondissements
#' @description
#' Arrondissements of Senegal.
#' * GID_1: identifier for regions
#' * GID_2: identifier for departments
#' * GID_3: unique identifier for arrondissements
#' * NAME: name of the arrondissement
#' * CC_3: unknown code
#' @source Codes and geometries have been extracted from the GADM database v4.1
#' (\url{https://gadm.org/}). Geometries precision has been fixed to 1 meter.
#' @md
#' @returns An sf object is returned.
#' @export
#' @examples
#' ardt <- sn_arrondissements()
#' plot(ardt)
#' if (require("mapsf")) {
#'   mf_map(ardt)
#'   mf_title("Arrondissements of Senegal")
#' }
sn_arrondissements <- function() {
  readRDS(system.file("rds/arrondissements.rds", package = "mapSenegal"))
}

#' @title Communes
#' @description
#' Communes of Senegal.
#' * GID_1: identifier for regions
#' * GID_2: identifier for departments
#' * GID_3: identifier for arrondissements
#' * GID_4: identifier for communes
#' * NAME: name of the arrondissement
#' * CC_4: unknown code
#' @source Codes and geometries have been extracted from the GADM database v4.1
#' (\url{https://gadm.org/}). Geometries precision has been fixed to 1 meter.
#' @md
#' @returns An sf object is returned.
#' @export
#' @examples
#' com <- sn_communes()
#' plot(com)
#' if (require("mapsf")) {
#'   mf_map(com)
#'   mf_title("Communes of Senegal")
#' }
sn_communes <- function() {
  readRDS(system.file("rds/communes.rds", package = "mapSenegal"))
}


#' @title Localities
#' @description
#' Localites of Senegal.
#' * NAME: locality name
#' * CC_1: unkown code
#' * CC_2: unkown code
#' @source Direction des Travaux geographiques et de la cartographie, Senegal.
#' @md
#' @returns An sf object is returned.
#' @export
#' @examples
#' loc <- sn_localities()
#' plot(loc)
#' if (require("mapsf")) {
#'   mf_map(loc)
#'   mf_title("Localities of Senegal")
#' }
sn_localities <- function() {
  readRDS(system.file("rds/localites.rds", package = "mapSenegal"))
}


#' @title Roads
#' @description
#' Roads of Senegal.
#' * TYPE: road type. 1 for motorways, 2 for national roads, 3 for regional
#' roads, 4 for departmental roads, 5 for other roads.
#' * NAME: road name
#' @source Direction des Travaux geographiques et de la cartographie, Senegal.
#' @md
#' @returns An sf object is returned.
#' @export
#' @examples
#' roads <- sn_roads()
#' plot(roads)
#' if (require("mapsf")) {
#'   mf_map(roads, var = "TYPE", type = "typo", lwd = 2)
#'   mf_title("Roads of Senegal")
#' }
sn_roads <- function() {
  readRDS(system.file("rds/routes.rds", package = "mapSenegal"))
}


#' @title Health facilities
#' @description
#' Health facilities of Senegal
#' * NAME: health facility name
#' * CC_1: unkown code
#' * CC_2: unkown code
#' * TYPE: health facility category
#' @source Direction des Travaux geographiques et de la cartographie, Senegal.
#' @md
#' @returns An sf object is returned.
#' @export
#' @examples
#' hf <- sn_health_facilities()
#' plot(hf)
#' if (require("mapsf")) {
#'   mf_map(hf, var = "TYPE", type = "symb", cex = 1, pal = "Dark 3", add = FALSE)
#'   mf_title("Health Facilities of Senegal")
#' }
sn_health_facilities <- function() {
  readRDS(system.file("rds/structures_sanitaires.rds", package = "mapSenegal"))
}


#' @title Universities
#' @description
#' Universities of Senegal.
#' * NAME: university name
#' * NB_FACULTIES: number of faculties
#' * NB_STUDENTS: number of students
#' @source Dataset gathered by Labaly Toure.
#' @md
#' @returns An sf object is returned.
#' @export
#' @examples
#' univ <- sn_universities()
#' plot(univ)
#' if (require("mapsf")) {
#'   mf_map(univ, var = "NB_STUDENTS", type = "prop", add = FALSE)
#'   mf_title("Universities of Senegal")
#' }
sn_universities <- function() {
  readRDS(system.file("rds/universites.rds", package = "mapSenegal"))
}




#' @title Administrative Boundaries of Senegal
#' @name mapSenegal
#' @description
#' Administrative boundaries of Senegal at several levels (regions,
#' departements, arrondissements and communes), based on 'GDAM', are provided.
#' The package also gives access to localities, universities, roads and health
#' facilities locations.
#' @docType package
"_PACKAGE"
