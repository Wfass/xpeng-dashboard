.class public final Lcom/loostone/libtuning/component/provider/util/MicInfoProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001d\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u001d\u0010\u000f\u001a\u00020\n8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0011\u001a\u00020\u00108\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\u00020\u00028\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/loostone/libtuning/component/provider/util/MicInfoProvider;",
        "",
        "",
        "keyIndex",
        "Landroid/database/Cursor;",
        "getValue",
        "(I)Landroid/database/Cursor;",
        "value",
        "setValue",
        "(II)I",
        "Lcom/loostone/libtuning/channel/BaseChannelMgr;",
        "fullSceneSpeakMgr$delegate",
        "Lkotlin/Lazy;",
        "getFullSceneSpeakMgr",
        "()Lcom/loostone/libtuning/channel/BaseChannelMgr;",
        "fullSceneSpeakMgr",
        "",
        "TAG",
        "Ljava/lang/String;",
        "GET_MIC_STATUS",
        "I",
        "GET_DONGLE_STATUS",
        "<init>",
        "()V",
        "libTuning_CAR_XIAOPENGRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field private static final GET_DONGLE_STATUS:I = 0x65

.field private static final GET_MIC_STATUS:I = 0x64

.field public static final INSTANCE:Lcom/loostone/libtuning/component/provider/util/MicInfoProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MicInfoProvider"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final fullSceneSpeakMgr$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/loostone/libtuning/component/provider/util/MicInfoProvider;

    invoke-direct {v0}, Lcom/loostone/libtuning/component/provider/util/MicInfoProvider;-><init>()V

    sput-object v0, Lcom/loostone/libtuning/component/provider/util/MicInfoProvider;->INSTANCE:Lcom/loostone/libtuning/component/provider/util/MicInfoProvider;

    sget-object v0, Lcom/loostone/libtuning/component/provider/util/MicInfoProvider$fullSceneSpeakMgr$2;->INSTANCE:Lcom/loostone/libtuning/component/provider/util/MicInfoProvider$fullSceneSpeakMgr$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/loostone/libtuning/component/provider/util/MicInfoProvider;->fullSceneSpeakMgr$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getFullSceneSpeakMgr()Lcom/loostone/libtuning/channel/BaseChannelMgr;
    .locals 1

    .line 1
    sget-object v0, Lcom/loostone/libtuning/component/provider/util/MicInfoProvider;->fullSceneSpeakMgr$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loostone/libtuning/channel/BaseChannelMgr;

    return-object v0
.end method


# virtual methods
.method public final getValue(I)Landroid/database/Cursor;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "key"

    const-string v2, "value"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    const/16 v2, 0x64

    if-ne p1, v2, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/MicInfoProvider;->getFullSceneSpeakMgr()Lcom/loostone/libtuning/channel/BaseChannelMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getVerifyStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 10
    invoke-direct {p0}, Lcom/loostone/libtuning/component/provider/util/MicInfoProvider;->getFullSceneSpeakMgr()Lcom/loostone/libtuning/channel/BaseChannelMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/loostone/libtuning/channel/BaseChannelMgr;->getPowerStatus()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 22
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "key"

    invoke-virtual {v1, v4, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 23
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "value"

    invoke-virtual {v1, v4, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 25
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get  keyIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "MicInfoProvider"

    invoke-virtual {v1, v2, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setValue(II)I
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set  keyIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MicInfoProvider"

    invoke-virtual {v0, p2, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
