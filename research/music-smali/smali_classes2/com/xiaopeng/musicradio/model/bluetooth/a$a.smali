.class Lcom/xiaopeng/musicradio/model/bluetooth/a$a;
.super Ljava/lang/Object;
.source "BluetoothMusicModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/model/bluetooth/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/xiaopeng/musicradio/model/bluetooth/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    new-instance v0, Lcom/xiaopeng/musicradio/model/bluetooth/a;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/model/bluetooth/a$a;->a:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    return-void
.end method

.method static synthetic a()Lcom/xiaopeng/musicradio/model/bluetooth/a;
    .locals 1

    .line 94
    sget-object v0, Lcom/xiaopeng/musicradio/model/bluetooth/a$a;->a:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    return-object v0
.end method
