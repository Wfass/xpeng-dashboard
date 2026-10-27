.class public Lcom/xiaopeng/aar/LogBlackList;
.super Ljava/lang/Object;
.source "LogBlackList.java"


# static fields
.field private static final sBlackList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/xiaopeng/aar/LogBlackList$1;

    invoke-direct {v0}, Lcom/xiaopeng/aar/LogBlackList$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/aar/LogBlackList;->sBlackList:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hit(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 27
    :cond_0
    sget-object v0, Lcom/xiaopeng/aar/LogBlackList;->sBlackList:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
