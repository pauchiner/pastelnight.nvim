module.exports =  {
  plain: {
    color: "#f9fbff",
    backgroundColor: "#292b3c",
  },
  styles: [
    {
      types: ["prolog", "builtin"],
      style: {
        color: "#fe4c4c",
      },
    },
    {
      types: ["function"],
      style: {
        color: "#7fa7ff",
      },
    },
    {
      types: ["symbol"],
      style: {
        color: "${blue1}",
      },
    },
    {
      types: ["punctuation"],
      style: {
        color: "${magenta}",
      },
    },
    {
      types: ["string", "char", "tag", "selector"],
      style: {
        color: "#65ff91",
      },
    },
    {
      types: ["keyword"],
      style: {
        color: "#b58cd8",
      },
    },
    {
      types: ["operator"],
      style: {
        color: "${blue5}",
      },
    },
    {
      types: ["constant", "boolean"],
      style: {
        color: "#fe854c",
      },
    },
    {
      types: ["variable"],
      style: {
        color: "#f9fbff",
      },
    },
    {
      types: ["comment"],
      style: {
        color: "${comment}",
        fontStyle: "italic",
      },
    },
    {
      types: ["attr-name"],
      style: {
        color: "rgb(241, 250, 140)",
      },
    },
  ],
};
