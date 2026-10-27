.class public Lcom/xiaopeng/speech/protocol/bean/search/SearchContentBean;
.super Ljava/lang/Object;
.source "SearchContentBean.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public aboveHint:Ljava/lang/String;

.field public belowHint:Ljava/lang/String;

.field public data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public searchType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    .local p0, "this":Lcom/xiaopeng/speech/protocol/bean/search/SearchContentBean;, "Lcom/xiaopeng/speech/protocol/bean/search/SearchContentBean<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
