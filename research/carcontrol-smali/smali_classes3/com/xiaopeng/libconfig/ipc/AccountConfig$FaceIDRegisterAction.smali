.class public final Lcom/xiaopeng/libconfig/ipc/AccountConfig$FaceIDRegisterAction;
.super Ljava/lang/Object;
.source "AccountConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libconfig/ipc/AccountConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FaceIDRegisterAction"
.end annotation


# static fields
.field public static final ORIENTATION_DOWN:Ljava/lang/String; = "down"

.field public static final ORIENTATION_FRONT:Ljava/lang/String; = "front"

.field public static final ORIENTATION_LEFT:Ljava/lang/String; = "left"

.field public static final ORIENTATION_NONE:Ljava/lang/String; = "none"

.field public static final ORIENTATION_RIGHT:Ljava/lang/String; = "right"

.field public static final ORIENTATION_UP:Ljava/lang/String; = "up"

.field public static final STATUS_PROCESSING:Ljava/lang/String; = "processing"

.field public static final STATUS_START:Ljava/lang/String; = "start"

.field public static final STATUS_SUCCEED:Ljava/lang/String; = "succeed"

.field public static final STATUS_TIMEDOUT:Ljava/lang/String; = "timedOut"


# instance fields
.field public orientation:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public timedOutCounter:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaceIDRegisterAction { orientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/libconfig/ipc/AccountConfig$FaceIDRegisterAction;->orientation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/libconfig/ipc/AccountConfig$FaceIDRegisterAction;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " };"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
