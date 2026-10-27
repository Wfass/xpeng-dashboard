.class public Lcom/xiaopeng/lludancemanager/bean/LluDanceExpandContent;
.super Ljava/lang/Object;
.source "LluDanceExpandContent.java"


# instance fields
.field private lightAndDanceAuthor:Ljava/lang/String;

.field private lightAndDanceLength:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceExpandContent;->lightAndDanceAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceExpandContent;->lightAndDanceLength:J

    return-wide v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "author"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceExpandContent;->lightAndDanceAuthor:Ljava/lang/String;

    return-void
.end method

.method public setDuration(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    .line 25
    iput-wide p1, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceExpandContent;->lightAndDanceLength:J

    return-void
.end method
