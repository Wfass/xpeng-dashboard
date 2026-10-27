.class public interface abstract Lqr;
.super Ljava/lang/Object;
.source "NameFilter.java"

# interfaces
.implements Lqo;


# direct methods
.method private static synthetic a(Lqr;Lqr;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 20
    invoke-interface {p1, p2, p3, p4}, Lqr;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-interface {p0, p2, p1, p4}, Lqr;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lqr;Lqr;)Lqr;
    .locals 1

    .line 17
    new-instance v0, L-$$Lambda$qr$jMtbZJYfgNsUAUKW1YJNQ-4ws8I;

    invoke-direct {v0, p1, p0}, L-$$Lambda$qr$jMtbZJYfgNsUAUKW1YJNQ-4ws8I;-><init>(Lqr;Lqr;)V

    return-object v0
.end method

.method public static synthetic lambda$jMtbZJYfgNsUAUKW1YJNQ-4ws8I(Lqr;Lqr;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lqr;->a(Lqr;Lqr;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
.end method
