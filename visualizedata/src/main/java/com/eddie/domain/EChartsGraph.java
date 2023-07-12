package com.eddie.domain;

import lombok.Data;

import java.util.List;
@Data
public class EChartsGraph {
    private List<Node> nodes;
    private List<Link> links;

    @Data
    public static class Node{
        private Long id;
        private String name;
        private Integer category;

    }
    @Data
    public static class Link{
        private String source;
        private String target;

    }
}
