.class public Lcom/loostone/libserver/version1/entity/response/mic/CommMicList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/loostone/libserver/version1/entity/response/mic/CommMicInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/loostone/libserver/version1/entity/response/mic/CommMicInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/response/mic/CommMicList;->items:Ljava/util/List;

    return-object v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/loostone/libserver/version1/entity/response/mic/CommMicInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/response/mic/CommMicList;->items:Ljava/util/List;

    return-void
.end method
