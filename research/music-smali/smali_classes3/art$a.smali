.class public Lart$a;
.super Ljava/lang/Object;
.source "AiSuggestEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lart$a;->a:Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;
    .locals 1

    .line 15
    iget-object v0, p0, Lart$a;->a:Lcom/xiaopeng/musicradio/bean/aisuggest/ContentBean;

    return-object v0
.end method
