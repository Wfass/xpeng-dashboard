.class public Lcom/xiaopeng/logictree/bean/LogicTreeVersion;
.super Ljava/lang/Object;
.source "LogicTreeVersion.java"


# instance fields
.field private final mUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logicTreeUrl"
    .end annotation
.end field

.field private final mVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/xiaopeng/logictree/bean/LogicTreeVersion;->mUrl:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/xiaopeng/logictree/bean/LogicTreeVersion;->mVersion:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/logictree/bean/LogicTreeVersion;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/logictree/bean/LogicTreeVersion;->mVersion:Ljava/lang/String;

    return-object v0
.end method
