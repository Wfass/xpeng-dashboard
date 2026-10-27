.class public Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean$SlotsBean;
.super Ljava/lang/Object;
.source "DuiSemanticBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlotsBean"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private pos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private rawvalue:Ljava/lang/String;

.field private value:Ljava/lang/String;

.field private valueType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "value_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean$SlotsBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean$SlotsBean;->pos:Ljava/util/List;

    return-object v0
.end method

.method public getRawvalue()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean$SlotsBean;->rawvalue:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean$SlotsBean;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getValueType()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean$SlotsBean;->valueType:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean$SlotsBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setPos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean$SlotsBean;->pos:Ljava/util/List;

    return-void
.end method

.method public setRawvalue(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean$SlotsBean;->rawvalue:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean$SlotsBean;->value:Ljava/lang/String;

    return-void
.end method

.method public setValueType(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/search/DuiSemanticBean$IntentsBean$MusicSearchPlayBean$SlotsBean;->valueType:Ljava/lang/String;

    return-void
.end method
