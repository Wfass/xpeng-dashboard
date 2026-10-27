.class public final Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$callBackList$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/LinkedList<",
        "Lcom/loostone/libtuning/channel/skyworth/inf/ISkySystemProperty;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Ljava/util/LinkedList;",
        "Lcom/loostone/libtuning/channel/skyworth/inf/ISkySystemProperty;",
        "<anonymous>",
        "()Ljava/util/LinkedList;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$callBackList$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$callBackList$2;

    invoke-direct {v0}, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$callBackList$2;-><init>()V

    sput-object v0, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$callBackList$2;->INSTANCE:Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$callBackList$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$callBackList$2;->invoke()Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/loostone/libtuning/channel/skyworth/inf/ISkySystemProperty;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method
