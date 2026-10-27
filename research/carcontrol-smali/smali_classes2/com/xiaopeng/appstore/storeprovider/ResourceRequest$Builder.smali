.class public Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$Builder;
.super Ljava/lang/Object;
.source "ResourceRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mAction:I

.field private final mExtra:Landroid/os/Bundle;

.field private final mResourceType:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$Builder;->mResourceType:I

    .line 114
    iput p2, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$Builder;->mAction:I

    .line 115
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$Builder;->mExtra:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public build()Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;
    .locals 8

    .line 129
    new-instance v7, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$Builder;->mResourceType:I

    iget v2, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$Builder;->mAction:I

    iget-object v5, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$Builder;->mExtra:Landroid/os/Bundle;

    const-wide/16 v3, -0x1

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;-><init>(IIJLandroid/os/Bundle;Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$1;)V

    return-object v7
.end method

.method public putExtra(Ljava/lang/String;I)Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$Builder;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$Builder;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;J)Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$Builder;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$Builder;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method
