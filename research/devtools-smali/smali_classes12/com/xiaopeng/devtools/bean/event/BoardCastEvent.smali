.class public Lcom/xiaopeng/devtools/bean/event/BoardCastEvent;
.super Ljava/lang/Object;
.source "BoardCastEvent.java"


# static fields
.field public static final DATA_FAIL:Ljava/lang/String; = "1"

.field public static final DATA_SUCCESS:Ljava/lang/String; = "0"

.field public static final TYPE_OTA_CDU:I = 0x0

.field public static final TYPE_OTA_ICM:I = 0x3

.field public static final TYPE_OTA_MCU:I = 0x1

.field public static final TYPE_OTA_PSU:I = 0x2


# instance fields
.field private data:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/xiaopeng/devtools/bean/event/BoardCastEvent;->type:I

    .line 26
    iput-object p2, p0, Lcom/xiaopeng/devtools/bean/event/BoardCastEvent;->data:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/event/BoardCastEvent;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/xiaopeng/devtools/bean/event/BoardCastEvent;->type:I

    return v0
.end method
