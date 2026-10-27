.class Lcom/xiaopeng/musicradio/model/dui/e$1;
.super Laxz;
.source "DuiMusicMediaModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/dui/e;->d(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Lcom/xiaopeng/musicradio/model/dui/e;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/dui/e;Ljava/lang/String;III)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/e$1;->c:Lcom/xiaopeng/musicradio/model/dui/e;

    iput p5, p0, Lcom/xiaopeng/musicradio/model/dui/e$1;->a:I

    invoke-direct {p0, p2, p3, p4}, Laxz;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public J()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/xiaopeng/musicradio/model/dui/e$1;->a:I

    return v0
.end method

.method public a(ZILjava/lang/String;)V
    .locals 0

    .line 140
    invoke-super {p0, p1, p2, p3}, Laxz;->a(ZILjava/lang/String;)V

    return-void
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
