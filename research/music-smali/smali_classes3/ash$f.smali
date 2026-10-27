.class public Lash$f;
.super Ljava/lang/Object;
.source "ProgramEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public a:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lash$f;->a:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lash$f;->c:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lash$f;->b:Z

    return-void
.end method
