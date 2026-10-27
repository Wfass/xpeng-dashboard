.class public Lbqv;
.super Ljava/lang/Object;
.source "UsbDirItem.java"


# instance fields
.field private a:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;ILjava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lbqv;->a:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    .line 24
    iput p2, p0, Lbqv;->b:I

    .line 25
    iput-object p3, p0, Lbqv;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 29
    iget v0, p0, Lbqv;->b:I

    return v0
.end method

.method public b()Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;
    .locals 1

    .line 37
    iget-object v0, p0, Lbqv;->a:Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lbqv;->c:Ljava/lang/String;

    return-object v0
.end method
