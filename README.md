Boilerplate for a simple 2-node PostgreSQL setup using [Docker Compose](https://docs.docker.com/compose/) with [Bitnami](https://bitnami.com/) container images. The setup includes a

- Master and slave node cluster with automatic failover.
- [pgAdmin](https://www.pgadmin.org/) container for database administration.
- Backup service that runs daily and stores backups on the host machine.

## Usage

```
git clone https://github.com/yohanderose/postgres-docker-compose.git
cd postgres-docker-compose
docker-compose up -d
```

- Verify backups are working as expected.

- Edit the initial schema and data with the `./postgres/init.sql` file.

- Restore from a backup using the `./postgres/restore.sh` script.

- **Note**: _PLEASE_ change the default passwords in `docker-compose.yml` and remove the host port mappings if you're deploying this in a production environment.

## Configuration

**Backup schedule**
Modify the backup frequency by editing the `backup` service in `docker-compose.yml`. They'll be saved to the host machine in the `./postgres/backups/` directory.

**Backup the backup**
I recommended [rsync](https://www.digitalocean.com/community/tutorials/how-to-use-rsync-to-sync-local-and-remote-directories)ing these backups to another server or cloud storage for peace-of-mind.

### Feedback

This took some time to get right, please let me know if it helped you or if you encounter any issues!

<h2 align="center">Contact</h2>
<p align='center'>
	<a href="mailto:yohanderose@gmail.com?subject=Hello">📧 Email</a>
	<a href="https://yohanderose.dev">👨🏾 Website</a>
	<a href="https://www.buymeacoffee.com/yderose">🍻 Donate</a>
</p>
