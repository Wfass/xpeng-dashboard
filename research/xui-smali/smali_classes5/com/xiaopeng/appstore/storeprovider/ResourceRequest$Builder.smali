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
    .locals 1
    .param p1, "resourceType"    # I
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceType",
            "action"
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$Builder;->mResourceType:I

    .line 114
    iput p2, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$Builder;->mAction:I

    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$Builder;->mExtra:Landroid/os/Bundle;

    .line 116
    return-void
.end method


# virtual methods
.method public build()Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;
    .locals 8

    .line 137
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
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$Builder;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;J)Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$Builder;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 125
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 129
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$Builder;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-object p0

    .line 130
    :cond_1
    :goto_0
    return-object p0
.end method
