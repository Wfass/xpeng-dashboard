.class public Lcom/xiaopeng/devtools/bean/car/TboxCanControlResponse;
.super Ljava/lang/Object;
.source "TboxCanControlResponse.java"


# instance fields
.field private button:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/bean/car/TboxCanControlButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public getButton()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/bean/car/TboxCanControlButton;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/car/TboxCanControlResponse;->button:Ljava/util/List;

    return-object v0
.end method
