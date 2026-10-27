.class public Lbfp;
.super Ljava/lang/Object;
.source "MsRecommendItem.java"


# instance fields
.field private a:I

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12

    .line 9
    iput v0, p0, Lbfp;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 21
    iget v0, p0, Lbfp;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 25
    iput p1, p0, Lbfp;->a:I

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lbfp;->b:Landroid/content/Context;

    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .line 30
    iget-object v0, p0, Lbfp;->b:Landroid/content/Context;

    return-object v0
.end method
