.class public Laap;
.super Laai;
.source "UnresolvedReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laap$a;,
        Laap$b;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0, v0}, Laai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Laap;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Laai$b;
    .locals 1

    .line 15
    sget-object v0, Laai$b;->UnresolvedReference:Laai$b;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Laaq;
    .locals 0

    .line 20
    sget-object p1, Laai;->u:Laaq;

    return-object p1
.end method
