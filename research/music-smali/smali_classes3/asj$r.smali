.class public Lasj$r;
.super Ljava/lang/Object;
.source "UserEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lasj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "r"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lasj$r;->a:Ljava/lang/String;

    .line 196
    iput-object p2, p0, Lasj$r;->b:Ljava/lang/String;

    .line 197
    iput-boolean p3, p0, Lasj$r;->c:Z

    .line 198
    iput-object p4, p0, Lasj$r;->d:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lasj$r;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lasj$r;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lasj$r;->c:Z

    return v0
.end method

.method public d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 1

    .line 214
    iget-object v0, p0, Lasj$r;->d:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    return-object v0
.end method
