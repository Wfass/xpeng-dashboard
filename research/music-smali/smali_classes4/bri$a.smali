.class Lbri$a;
.super Ljava/lang/Object;
.source "RetrieverEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public a:Lbrh;

.field public b:Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;

.field public c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;


# direct methods
.method public constructor <init>(Lbrh;Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lbri$a;->a:Lbrh;

    .line 174
    iput-object p2, p0, Lbri$a;->b:Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;

    .line 175
    iput-object p3, p0, Lbri$a;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    return-void
.end method
