.class public Lcom/loostone/libserver/version1/entity/response/karaoke/KaraokeApp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static MODE_DFT:I = 0x1

.field public static MODE_DFT_INSTALL:I = 0x2

.field public static MODE_FIRST:I = 0x3

.field public static MODE_FIRST_INSTALL:I = 0x4


# instance fields
.field private firstPackage:Ljava/lang/String;

.field private supportList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x1

    iput v0, p0, Lcom/loostone/libserver/version1/entity/response/karaoke/KaraokeApp;->type:I

    return-void
.end method


# virtual methods
.method public getFirstPackage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/response/karaoke/KaraokeApp;->firstPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libserver/version1/entity/response/karaoke/KaraokeApp;->supportList:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/loostone/libserver/version1/entity/response/karaoke/KaraokeApp;->type:I

    return v0
.end method

.method public setFirstPackage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/response/karaoke/KaraokeApp;->firstPackage:Ljava/lang/String;

    return-void
.end method

.method public setSupportList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/loostone/libserver/version1/entity/response/karaoke/KaraokeApp;->supportList:Ljava/util/List;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/loostone/libserver/version1/entity/response/karaoke/KaraokeApp;->type:I

    return-void
.end method
