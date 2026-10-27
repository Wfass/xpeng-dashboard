.class final enum Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;
.super Ljava/lang/Enum;
.source "SelfCheckPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

.field public static final enum PLAYING:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

.field public static final enum PREPARED:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

.field public static final enum STOPPED:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 57
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    const-string v1, "PREPARED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;->PREPARED:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    const-string v1, "PLAYING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;->PLAYING:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    const-string v1, "STOPPED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;->STOPPED:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;->PREPARED:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;->PLAYING:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;->STOPPED:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;->$VALUES:[Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 56
    const-class v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    return-object v0
.end method

.method public static values()[Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;
    .locals 1

    .line 56
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;->$VALUES:[Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    invoke-virtual {v0}, [Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    return-object v0
.end method
