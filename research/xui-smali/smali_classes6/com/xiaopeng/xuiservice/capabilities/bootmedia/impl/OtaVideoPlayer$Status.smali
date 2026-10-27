.class final enum Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;
.super Ljava/lang/Enum;
.source "OtaVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

.field public static final enum PLAYING:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

.field public static final enum PREPARED:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

.field public static final enum STOPPED:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 58
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    const-string v1, "PREPARED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;->PREPARED:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    const-string v1, "STOPPED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;->STOPPED:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    const-string v1, "PLAYING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;->PLAYING:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;->PREPARED:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;->STOPPED:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;->PLAYING:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;->$VALUES:[Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 57
    const-class v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    return-object v0
.end method

.method public static values()[Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;
    .locals 1

    .line 57
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;->$VALUES:[Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    invoke-virtual {v0}, [Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$Status;

    return-object v0
.end method
