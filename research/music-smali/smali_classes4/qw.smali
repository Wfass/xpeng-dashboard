.class public interface abstract Lqw;
.super Ljava/lang/Object;
.source "ValueFilter.java"

# interfaces
.implements Lqo;


# direct methods
.method private static synthetic a(Lqw;Lqw;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-interface {p1, p2, p3, p4}, Lqw;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    invoke-interface {p0, p2, p3, p1}, Lqw;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lqw;Lqw;)Lqw;
    .locals 1

    .line 12
    new-instance v0, L-$$Lambda$qw$Z3540xF3W3NYE1NMwbzwbfXq6hc;

    invoke-direct {v0, p1, p0}, L-$$Lambda$qw$Z3540xF3W3NYE1NMwbzwbfXq6hc;-><init>(Lqw;Lqw;)V

    return-object v0
.end method

.method public static synthetic lambda$Z3540xF3W3NYE1NMwbzwbfXq6hc(Lqw;Lqw;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lqw;->a(Lqw;Lqw;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end method
