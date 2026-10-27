.class Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;
.super Ljava/lang/Object;
.source "XpMakeupLightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BiMakeup"
.end annotation


# static fields
.field private static final TIMEOUT:I = 0xa

.field private static final TOP_LIMIT:I = 0x14


# instance fields
.field private bilog:Lcom/xiaopeng/biutil/BiLog;

.field private colorTemps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private effects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private luminances:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;II)V
    .locals 3
    .param p2, "colorTemp"    # I
    .param p3, "luminance"    # I

    .line 193
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->this$0:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->colorTemps:Ljava/util/Set;

    .line 137
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->luminances:Ljava/util/Set;

    .line 138
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->effects:Ljava/util/Set;

    .line 140
    const-string p1, "P10141"

    const-string v0, "B009"

    .line 141
    invoke-static {p1, v0}, Lcom/xiaopeng/biutil/BiLogFactory;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/biutil/BiLog;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->bilog:Lcom/xiaopeng/biutil/BiLog;

    .line 194
    iget-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->bilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v0, "colorTemp"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->bilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v0, "luminance"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->bilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v0, "startTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method


# virtual methods
.method public addEffects(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;)V
    .locals 2
    .param p1, "effect"    # Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->effects:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->effects:Ljava/util/Set;

    iget-object v1, p1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_0
    return-void
.end method

.method public sendColorTemperature(I)V
    .locals 4
    .param p1, "temperature"    # I

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->this$0:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->access$000(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 145
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 146
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 147
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->this$0:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->access$000(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 149
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->this$0:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->access$000(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 150
    return-void
.end method

.method public sendLuminance(I)V
    .locals 4
    .param p1, "lux"    # I

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->this$0:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->access$000(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 160
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 161
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 162
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->this$0:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->access$000(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 164
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->this$0:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->access$000(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 165
    return-void
.end method

.method public storeColorTemperature(I)V
    .locals 2
    .param p1, "temperature"    # I

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->colorTemps:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->colorTemps:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_0
    return-void
.end method

.method public storeLuminance(I)V
    .locals 2
    .param p1, "lux"    # I

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->luminances:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->luminances:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_0
    return-void
.end method

.method public submit()V
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->this$0:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->access$000(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->this$0:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->access$000(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->bilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v1, "endTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->bilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v1, "setColorTemps"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->colorTemps:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->bilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v1, "setLuminances"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->luminances:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->bilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v1, "setEffects"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->effects:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v0, "XpMakeupLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BiMakeup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->bilog:Lcom/xiaopeng/biutil/BiLog;

    invoke-virtual {v2}, Lcom/xiaopeng/biutil/BiLog;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;->getInstance()Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$BiMakeup;->bilog:Lcom/xiaopeng/biutil/BiLog;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;->submit(Lcom/xiaopeng/biutil/BiLog;)V

    .line 191
    return-void
.end method
