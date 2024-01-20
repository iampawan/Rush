import starlight from '@astrojs/starlight';
import { defineConfig } from 'astro/config';

// https://astro.build/config
export default defineConfig({
	integrations: [
		starlight({
			title: 'rush.dart',
			customCss: [
				'./src/styles/custom.css',
			  ],
			  lastUpdated: true,
			social: {
				github: 'https://github.com/iampawan/rush',
				instagram: 'https://www.instagram.com/codepur_ka_superhero',
				linkedin: 'https://www.linkedin.com/in/imthepk',
				'x.com': 'https://x.com/imthepk',
				youtube: 'https://youtube.com/@hellocodepur',
			},
			sidebar: [
				{
					label: 'Guides',
					items: [
						// Each item here is one entry in the navigation menu.
						{ label: 'Install', link: '/guides/installation/' },
						{ label: 'Text', link: '/guides/text/' },
					],
				},
				{
					label: 'Reference',
					autogenerate: { directory: 'reference' },
				},
			],
			
		}),
	],
});
