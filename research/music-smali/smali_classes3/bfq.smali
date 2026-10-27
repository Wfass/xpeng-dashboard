.class public Lbfq;
.super Ljava/lang/Object;
.source "MsTopItem.java"


# instance fields
.field private a:I

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lbfq;->a:I

    .line 12
    iput p1, p0, Lbfq;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 17
    iget v0, p0, Lbfq;->a:I

    return v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lbfq;->b:Landroid/content/Context;

    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .line 21
    iget-object v0, p0, Lbfq;->b:Landroid/content/Context;

    return-object v0
.end method
