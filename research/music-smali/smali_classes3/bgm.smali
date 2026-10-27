.class public Lbgm;
.super Ljava/lang/Object;
.source "XpPlayTitleBean.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lbgm;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lbgm;->c:Landroid/content/Context;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lbgm;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lbgm;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lbgm;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Landroid/content/Context;
    .locals 1

    .line 29
    iget-object v0, p0, Lbgm;->c:Landroid/content/Context;

    return-object v0
.end method
