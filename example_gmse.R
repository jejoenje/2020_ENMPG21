library(GMSE)

?gmse

### "Culling" is the only action allowed
sim_1 <- gmse(manager_budget = 10000, user_budget = 10000, res_death_K = 9387,
              manage_target = 7000, RESOURCE_ini = 3500, plotting = FALSE,
              stakeholders = 8, land_ownership = TRUE, public_land = 0.4,
              scaring = FALSE, lambda = 0.275, remove_pr = 0.012, time_max = 20,
              res_death_type = 3, res_consume = 0.2, res_birth_K = 20000,
              observe_type = 3, agent_view = 1, converge_crit = 0.2,
              ga_mingen = 10)

plot_gmse_results(sim_1)

### Adding "scare resource" action
sim_2 <- gmse(manager_budget = 10000, user_budget = 10000, res_death_K = 9387,
              manage_target = 7000, RESOURCE_ini = 3500, plotting = FALSE,
              stakeholders = 8, land_ownership = TRUE, public_land = 0.4,
              scaring = TRUE, lambda = 0.275, remove_pr = 0.012, time_max = 20,
              res_death_type = 3, res_consume = 0.2, res_birth_K = 20000,
              observe_type = 3, agent_view = 1, converge_crit = 0.2,
              ga_mingen = 10)

plot_gmse_results(sim_2)

### Adding "tending crop" action; also specifying value of tending crop.
sim_3 <- gmse(manager_budget = 10000, user_budget = 10000, res_death_K = 9387,
              manage_target = 7000, RESOURCE_ini = 3500, plotting = FALSE,
              stakeholders = 8, land_ownership = TRUE, public_land = 0.4,
              scaring = TRUE, tend_crops = TRUE, tend_crop_yld = 0.02, lambda = 0.275, remove_pr = 0.012, time_max = 20,
              res_death_type = 3, res_consume = 0.2, res_birth_K = 20000,
              observe_type = 3, agent_view = 1, times_observe = 4, converge_crit = 0.2,
              ga_mingen = 10)
plot_gmse_results(sim_3)

### Increasing observation uncertainty - observe type to 0 (density-based sampling) and tweaking related parameters:
sim_4 <- gmse(manager_budget = 10000, user_budget = 10000, res_death_K = 9387,
              manage_target = 7000, RESOURCE_ini = 3500, plotting = FALSE,
              stakeholders = 8, land_ownership = TRUE, public_land = 0.4,
              scaring = TRUE, tend_crops = TRUE, tend_crop_yld = 0.02, lambda = 0.275, remove_pr = 0.012, time_max = 20,
              res_death_type = 3, res_consume = 0.2, res_birth_K = 20000,
              observe_type = 0, agent_view = 5, times_observe = 3, converge_crit = 0.2,
              ga_mingen = 10)
plot_gmse_results(sim_4)

