import { giin } from 'giin';
import { thinid } from '@103cuong/thinid';
import { viee } from 'viee';
import { logger } from 'juno-js';

giin({
  option: {
    url: 'https://graphqlzero.almansi.me/api',
  },
  query: `
    query {
      post(id: $id) {
        id
        title
        body
      }
    }
  `,
  variables: {
    id: 1,
  },
})
  .then(logger.info)
  .catch(logger.error);

logger.info(thinid());
logger.info(viee('🦄 Cương Trần'));
