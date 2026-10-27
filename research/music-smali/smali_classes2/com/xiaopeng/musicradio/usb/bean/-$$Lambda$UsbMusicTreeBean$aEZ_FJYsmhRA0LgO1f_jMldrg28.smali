.class public final synthetic Lcom/xiaopeng/musicradio/usb/bean/-$$Lambda$UsbMusicTreeBean$aEZ_FJYsmhRA0LgO1f_jMldrg28;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/musicradio/usb/bean/-$$Lambda$UsbMusicTreeBean$aEZ_FJYsmhRA0LgO1f_jMldrg28;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/musicradio/usb/bean/-$$Lambda$UsbMusicTreeBean$aEZ_FJYsmhRA0LgO1f_jMldrg28;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/usb/bean/-$$Lambda$UsbMusicTreeBean$aEZ_FJYsmhRA0LgO1f_jMldrg28;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/usb/bean/-$$Lambda$UsbMusicTreeBean$aEZ_FJYsmhRA0LgO1f_jMldrg28;->INSTANCE:Lcom/xiaopeng/musicradio/usb/bean/-$$Lambda$UsbMusicTreeBean$aEZ_FJYsmhRA0LgO1f_jMldrg28;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;->lambda$aEZ_FJYsmhRA0LgO1f_jMldrg28(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)I

    move-result p1

    return p1
.end method
