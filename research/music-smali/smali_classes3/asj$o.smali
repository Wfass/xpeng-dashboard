.class public Lasj$o;
.super Ljava/lang/Object;
.source "UserEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lasj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lasj$o;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    return-void
.end method
