workspace {

    model {
        player = person "Player"

        ui = softwareSystem "User Interface" {

        }

        
        backend = softwareSystem "Backend" {
            crew = container "Ship Crew" {
                crewMember = component "Crew Member"
            } 
        }

        player -> ui "uses"
        ui -> backend "uses"

        
    }

    views {
        systemContext ui "System" {
            include *

        }

        container backend "Container" {
            include *
        }
        component crew "Crew" {
            include *
        }
    }

    configuration {
        scope softwaresystem
    }

}