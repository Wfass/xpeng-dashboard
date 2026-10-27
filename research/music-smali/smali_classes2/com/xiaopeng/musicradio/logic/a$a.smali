.class public interface abstract Lcom/xiaopeng/musicradio/logic/a$a;
.super Ljava/lang/Object;
.source "MusicGlobalLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/logic/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/xiaopeng/musicradio/logic/a$b;

.field public static final b:Lcom/xiaopeng/musicradio/logic/a$b;

.field public static final c:Lcom/xiaopeng/musicradio/logic/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lcom/xiaopeng/musicradio/logic/a$b;

    const/16 v1, -0x2710

    const-string v2, "unknown error"

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/logic/a$b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/logic/a$a;->a:Lcom/xiaopeng/musicradio/logic/a$b;

    .line 42
    new-instance v0, Lcom/xiaopeng/musicradio/logic/a$b;

    const/16 v1, -0x2711

    const-string v2, "params error"

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/logic/a$b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/logic/a$a;->b:Lcom/xiaopeng/musicradio/logic/a$b;

    .line 47
    new-instance v0, Lcom/xiaopeng/musicradio/logic/a$b;

    const/16 v1, -0x2712

    const-string v2, "data error"

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/logic/a$b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/logic/a$a;->c:Lcom/xiaopeng/musicradio/logic/a$b;

    return-void
.end method
