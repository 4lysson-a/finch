> [!WARNING]  
> 👷 Work in progress 👷

---

<div align="center">
  <h1>Finch - Personal finance control</h1>

![finch-logo-animation](/assets/finch-logo-animation-ping-pong.gif)

</div>

## Tech stack

</br>

<div align="center">
  <img src="https://skillicons.dev/icons?i=html,css,javascript,typescript,docker,git,prisma,nodejs,nestjs,react,vite,tailwindcss" width="415px" alt="Technologies" />
</div>

</br>

- [**Backend:**](./backend/README.md) 
  - [`Docker`](https://www.docker.com/) 
  - [`Nest.js`](https://nestjs.com/) 
  - [`Prisma ORM`](https://www.prisma.io/) 
  - `PostgreSQL` 

- **Frontend:**
  - [`React`](https://react.dev/) 
  - [`Radix Ui`](https://www.radix-ui.com/)
  - [`React Query`](https://tanstack.com/) 
  - [`Tailwind CSS`](https://tailwindcss.com/) 


## Running locally

### Database
1. To setup the database, make sure you have built the container and that it has uploaded both the database and the backend:
    
    1.1 Follow steps 1 and 2 from the `backend` section.

2. If you structuring the bank for the first time follow the steps below:
    
    - 2.1. Enter inside the backend container:
      ```bash
        docker compose exec -it finch-backend bash
      ```

    - 2.2. Run the following command to create the database schema:
      ```bash
        npx prisma migrate dev
      ```

    - 2.3. Check if the bank was structured correctly:
    
        - 2.3.1. Run the following command to enter the database:
        
            ```bash
              docker exec -it finch-db bash
            ```

        - 2.3.2. Run the following command login in `psql`:
        
            ```bash
              psql -U root
            ```

        - 2.3.3. Run the following command to list the databases, you should see the `finch` database:

            ```bash
              \l
            ```

        - 2.3.4. Run the following command to list the tables, you should see all tables created by Prisma:

            ```bash
              \c finch
              \dt
            ```
          if you see the tables, the database was structured correctly :>

### Backend
1. Create a `.env` file in the `backend` directory follow the `.env.example` file as a template.:

2. Run the following command to install the dependencies:
```bash
docker compose run --rm backend-deps
```

3. Run the following command to start the backend:
    - 3.1. If you run the backend for the first time, run the following command:

      ```bash
      docker compose up --build
      ```

    - 3.2. If you have already run the backend before, run the following command:

      ```bash
      docker compose up finch-backend finch-db
      ```

### Frontend
To run the frontend, follow the instructions below its similar to the backend:

1. Run the following command to install the dependencies:
```bash
docker compose run --rm frontend-deps
```

3. Run the following command to start the container:
    - 3.1. If you run the backend for the first time, run the following command:

      ```bash
      docker compose up --build
      ```

    - 3.2. If you have already run the backend before, run the following command:

      ```bash
      docker compose up finch-frontend
      ```

## Branding

![finch-banner](/assets/finch-banner.png)

😒 Tired of your finances being in ~~disorder~~?

⛓️‍💥 No more complicated spreadsheets and confusing apps!

🤩 With **Finch**, you have one hassle-free place for all your finances.

Organize your accounts, track your spending, create budgets and achieve your financial goals more easily than ever.
