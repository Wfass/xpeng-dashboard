.class public Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable;
.super Ljava/lang/Object;
.source "MusicFileIteratable.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field public static sFileFilter:Ljava/io/FileFilter;


# instance fields
.field private mFileFoldArray:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable$a;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable$a;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable;->sFileFilter:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable;->mFileFoldArray:Ljava/util/Stack;

    .line 31
    new-instance v0, Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable$1;-><init>(Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable;->mIterator:Ljava/util/Iterator;

    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 21
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable;->mFileFoldArray:Ljava/util/Stack;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable;)Ljava/util/Stack;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable;->mFileFoldArray:Ljava/util/Stack;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/model/MusicFileIteratable;->mIterator:Ljava/util/Iterator;

    return-object v0
.end method
