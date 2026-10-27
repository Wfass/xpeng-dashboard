.class public abstract Lcom/xiaopeng/vui/commons/model/VuiEvent;
.super Ljava/lang/Object;
.source "VuiEvent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getEventValue(Lcom/xiaopeng/vui/commons/model/VuiEvent;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaopeng/vui/commons/model/VuiEvent;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getHitVuiElement()Lcom/xiaopeng/vui/commons/model/VuiElement;
.end method

.method public abstract getHitVuiElements(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;"
        }
    .end annotation
.end method
