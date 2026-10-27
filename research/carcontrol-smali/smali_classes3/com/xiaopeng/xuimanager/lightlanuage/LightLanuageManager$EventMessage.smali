.class Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventMessage;
.super Ljava/lang/Object;
.source "LightLanuageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventMessage"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventMessage;->this$0:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventMessage;->name:Ljava/lang/String;

    .line 95
    iput-object p3, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventMessage;->type:Ljava/lang/String;

    return-void
.end method
