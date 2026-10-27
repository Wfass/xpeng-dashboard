.class public final enum Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;
.super Ljava/lang/Enum;
.source "MediaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;

.field public static final enum OTA_VIDEO:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;

.field public static final enum SELF_CHECK_VIDEO:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;

.field public static final enum WELCOME_ANIMATION:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;

    const-string v1, "SELF_CHECK_VIDEO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;->SELF_CHECK_VIDEO:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;

    .line 5
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;

    const-string v1, "WELCOME_ANIMATION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;->WELCOME_ANIMATION:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;

    .line 6
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;

    const-string v1, "OTA_VIDEO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;->OTA_VIDEO:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;->SELF_CHECK_VIDEO:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;->WELCOME_ANIMATION:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;->OTA_VIDEO:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;->$VALUES:[Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;

    return-object v0
.end method

.method public static values()[Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;
    .locals 1

    .line 3
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;->$VALUES:[Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;

    invoke-virtual {v0}, [Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;

    return-object v0
.end method
